; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_dma_txrxb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_au1550_spi.c_au1550_spi_dma_txrxb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, i64, i64, i64, i64 }
%struct.au1550_spi = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tx dma map error\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rx dma map error\0A\00", align 1
@AU1550_SPI_DMA_RXTMP_MINSIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"rx dma put dest error\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"tx dma put source error\0A\00", align 1
@PSC_SPIMSK_SD = common dso_local global i32 0, align 4
@PSC_SPIPCR_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @au1550_spi_dma_txrxb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_dma_txrxb(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.au1550_spi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.au1550_spi* @spi_master_get_devdata(i32 %13)
  store %struct.au1550_spi* %14, %struct.au1550_spi** %6, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %19 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %21 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %23 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %25 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %28 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %27, i32 0, i32 10
  store i64 %26, i64* %28, align 8
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %33 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %32, i32 0, i32 11
  store i64 %31, i64* %33, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %7, align 8
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %2
  %45 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %51 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i64 @dma_map_single(i32 %52, i8* %56, i64 %59, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %63 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call i64 @dma_mapping_error(i32 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %70 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %49
  br label %74

74:                                               ; preds = %73, %44
  br label %75

75:                                               ; preds = %74, %2
  %76 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %77 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %80
  %86 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %87 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %97 = call i64 @dma_map_single(i32 %88, i8* %92, i64 %95, i32 %96)
  store i64 %97, i64* %8, align 8
  %98 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %99 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i64 @dma_mapping_error(i32 %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %85
  %105 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %106 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %85
  br label %110

110:                                              ; preds = %109, %80
  br label %152

111:                                              ; preds = %75
  %112 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %113 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %116 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp sgt i64 %114, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %111
  %120 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %121 = call i32 @au1550_spi_dma_rxtmp_free(%struct.au1550_spi* %120)
  %122 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %123 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %124 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @AU1550_SPI_DMA_RXTMP_MINSIZE, align 4
  %127 = call i32 @max(i64 %125, i32 %126)
  %128 = call i32 @au1550_spi_dma_rxtmp_alloc(%struct.au1550_spi* %122, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %314

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %111
  %135 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %136 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %139 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %138, i32 0, i32 11
  store i64 %137, i64* %139, align 8
  %140 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %141 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %8, align 8
  %143 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %144 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %148 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %151 = call i32 @dma_sync_single_for_device(i32 %145, i64 %146, i64 %149, i32 %150)
  br label %152

152:                                              ; preds = %134, %110
  %153 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %154 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %152
  %158 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %159 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %163 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %166 = call i32 @dma_sync_single_for_device(i32 %160, i64 %161, i64 %164, i32 %165)
  %167 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %168 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %167, i32 0, i32 11
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %171 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %170, i32 0, i32 10
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %157, %152
  %173 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %174 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %177 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %176, i32 0, i32 11
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %180 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @au1xxx_dbdma_put_dest(i32 %175, i64 %178, i64 %181)
  store i64 %182, i64* %9, align 8
  %183 = load i64, i64* %9, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %172
  %186 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %187 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @dev_err(i32 %188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %185, %172
  %191 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %192 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %195 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %194, i32 0, i32 10
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %199 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @au1xxx_dbdma_put_source(i32 %193, i8* %197, i64 %200)
  store i64 %201, i64* %9, align 8
  %202 = load i64, i64* %9, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %190
  %205 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %206 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dev_err(i32 %207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %209

209:                                              ; preds = %204, %190
  %210 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %211 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @au1xxx_dbdma_start(i32 %212)
  %214 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %215 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @au1xxx_dbdma_start(i32 %216)
  %218 = load i32, i32* @PSC_SPIMSK_SD, align 4
  %219 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %220 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %219, i32 0, i32 9
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 1
  store i32 %218, i32* %222, align 4
  %223 = call i32 (...) @au_sync()
  %224 = load i32, i32* @PSC_SPIPCR_MS, align 4
  %225 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %226 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %225, i32 0, i32 9
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  store i32 %224, i32* %228, align 4
  %229 = call i32 (...) @au_sync()
  %230 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %231 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %230, i32 0, i32 8
  %232 = call i32 @wait_for_completion(i32* %231)
  %233 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %234 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @au1xxx_dbdma_stop(i32 %235)
  %237 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %238 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @au1xxx_dbdma_stop(i32 %239)
  %241 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %242 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %241, i32 0, i32 4
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %255, label %245

245:                                              ; preds = %209
  %246 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %247 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = load i64, i64* %8, align 8
  %250 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %251 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %254 = call i32 @dma_sync_single_for_cpu(i32 %248, i64 %249, i64 %252, i32 %253)
  br label %255

255:                                              ; preds = %245, %209
  %256 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %257 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %256, i32 0, i32 4
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %255
  %261 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %262 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %260
  %266 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %267 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = load i64, i64* %8, align 8
  %270 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %271 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %274 = call i32 @dma_unmap_single(i32 %268, i64 %269, i64 %272, i32 %273)
  br label %275

275:                                              ; preds = %265, %260, %255
  %276 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %277 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %295

280:                                              ; preds = %275
  %281 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %282 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %295

285:                                              ; preds = %280
  %286 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %287 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = load i64, i64* %7, align 8
  %290 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %291 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i32, i32* @DMA_TO_DEVICE, align 4
  %294 = call i32 @dma_unmap_single(i32 %288, i64 %289, i64 %292, i32 %293)
  br label %295

295:                                              ; preds = %285, %280, %275
  %296 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %297 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %300 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp slt i64 %298, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %295
  %304 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %305 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  br label %311

307:                                              ; preds = %295
  %308 = load %struct.au1550_spi*, %struct.au1550_spi** %6, align 8
  %309 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  br label %311

311:                                              ; preds = %307, %303
  %312 = phi i64 [ %306, %303 ], [ %310, %307 ]
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %311, %131
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local %struct.au1550_spi* @spi_master_get_devdata(i32) #1

declare dso_local i64 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @au1550_spi_dma_rxtmp_free(%struct.au1550_spi*) #1

declare dso_local i32 @au1550_spi_dma_rxtmp_alloc(%struct.au1550_spi*, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i64, i32) #1

declare dso_local i64 @au1xxx_dbdma_put_dest(i32, i64, i64) #1

declare dso_local i64 @au1xxx_dbdma_put_source(i32, i8*, i64) #1

declare dso_local i32 @au1xxx_dbdma_start(i32) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @au1xxx_dbdma_stop(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i64, i64, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
