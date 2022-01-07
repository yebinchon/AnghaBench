; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_config_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_msm_sdcc.c_msmsdcc_config_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msmsdcc_host = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32, %struct.scatterlist*, i32, %struct.msmsdcc_nc_dmadata* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.msmsdcc_nc_dmadata = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.mmc_data = type { i32, i32, %struct.scatterlist* }

@MSMSDCC_CRCI_SDC1 = common dso_local global i32 0, align 4
@MSMSDCC_CRCI_SDC2 = common dso_local global i32 0, align 4
@MSMSDCC_CRCI_SDC3 = common dso_local global i32 0, align 4
@MSMSDCC_CRCI_SDC4 = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Unable to map in all sg elements\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMD_MODE_BOX = common dso_local global i32 0, align 4
@CMD_LC = common dso_local global i32 0, align 4
@MCI_FIFOSIZE = common dso_local global i32 0, align 4
@CMD_PTR_LP = common dso_local global i32 0, align 4
@DMOV_CMD_PTR_LIST = common dso_local global i32 0, align 4
@msmsdcc_dma_complete_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msmsdcc_host*, %struct.mmc_data*)* @msmsdcc_config_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msmsdcc_config_dma(%struct.msmsdcc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msmsdcc_host*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca %struct.msmsdcc_nc_dmadata*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  store %struct.msmsdcc_host* %0, %struct.msmsdcc_host** %4, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %5, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 2
  %16 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  store %struct.scatterlist* %16, %struct.scatterlist** %13, align 8
  %17 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %18 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %19 = call i32 @validate_dma(%struct.msmsdcc_host* %17, %struct.mmc_data* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %3, align 4
  br label %270

24:                                               ; preds = %2
  %25 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 2
  %27 = load %struct.scatterlist*, %struct.scatterlist** %26, align 8
  %28 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %29 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  store %struct.scatterlist* %27, %struct.scatterlist** %30, align 8
  %31 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %35 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %38 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  %40 = load %struct.msmsdcc_nc_dmadata*, %struct.msmsdcc_nc_dmadata** %39, align 8
  store %struct.msmsdcc_nc_dmadata* %40, %struct.msmsdcc_nc_dmadata** %6, align 8
  %41 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %42 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %52 [
    i32 1, label %44
    i32 2, label %46
    i32 3, label %48
    i32 4, label %50
  ]

44:                                               ; preds = %24
  %45 = load i32, i32* @MSMSDCC_CRCI_SDC1, align 4
  store i32 %45, i32* %9, align 4
  br label %61

46:                                               ; preds = %24
  %47 = load i32, i32* @MSMSDCC_CRCI_SDC2, align 4
  store i32 %47, i32* %9, align 4
  br label %61

48:                                               ; preds = %24
  %49 = load i32, i32* @MSMSDCC_CRCI_SDC3, align 4
  store i32 %49, i32* %9, align 4
  br label %61

50:                                               ; preds = %24
  %51 = load i32, i32* @MSMSDCC_CRCI_SDC4, align 4
  store i32 %51, i32* %9, align 4
  br label %61

52:                                               ; preds = %24
  %53 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %54 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 4
  store %struct.scatterlist* null, %struct.scatterlist** %55, align 8
  %56 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %57 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %270

61:                                               ; preds = %50, %48, %46, %44
  %62 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MMC_DATA_READ, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %71 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 8
  br label %78

73:                                               ; preds = %61
  %74 = load i32, i32* @DMA_TO_DEVICE, align 4
  %75 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %76 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 8
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %80 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 0, i64* %81, align 8
  %82 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %83 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mmc_dev(i32 %84)
  %86 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %87 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 4
  %89 = load %struct.scatterlist*, %struct.scatterlist** %88, align 8
  %90 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %91 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %95 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @dma_map_sg(i32 %85, %struct.scatterlist* %89, i32 %93, i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %101 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %99, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %78
  %106 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %107 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @mmc_hostname(i32 %108)
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %112 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 4
  store %struct.scatterlist* null, %struct.scatterlist** %113, align 8
  %114 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %115 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %270

119:                                              ; preds = %78
  %120 = load %struct.msmsdcc_nc_dmadata*, %struct.msmsdcc_nc_dmadata** %6, align 8
  %121 = getelementptr inbounds %struct.msmsdcc_nc_dmadata, %struct.msmsdcc_nc_dmadata* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 0
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %235, %119
  %125 = load i32, i32* %11, align 4
  %126 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %127 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ult i32 %125, %129
  br i1 %130, label %131, label %238

131:                                              ; preds = %124
  %132 = load i32, i32* @CMD_MODE_BOX, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %137 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub i32 %139, 1
  %141 = icmp eq i32 %135, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %131
  %143 = load i32, i32* @CMD_LC, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %131
  %149 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %150 = call i32 @sg_dma_len(%struct.scatterlist* %149)
  %151 = load i32, i32* @MCI_FIFOSIZE, align 4
  %152 = srem i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %148
  %155 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %156 = call i32 @sg_dma_len(%struct.scatterlist* %155)
  %157 = load i32, i32* @MCI_FIFOSIZE, align 4
  %158 = sdiv i32 %156, %157
  %159 = add nsw i32 %158, 1
  br label %165

160:                                              ; preds = %148
  %161 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %162 = call i32 @sg_dma_len(%struct.scatterlist* %161)
  %163 = load i32, i32* @MCI_FIFOSIZE, align 4
  %164 = sdiv i32 %162, %163
  br label %165

165:                                              ; preds = %160, %154
  %166 = phi i32 [ %159, %154 ], [ %164, %160 ]
  store i32 %166, i32* %8, align 4
  %167 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %168 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MMC_DATA_READ, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %165
  %174 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %175 = call i8* @msmsdcc_fifo_addr(%struct.msmsdcc_host* %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 5
  store i8* %175, i8** %177, align 8
  %178 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %179 = call i8* @sg_dma_address(%struct.scatterlist* %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  %182 = load i32, i32* @MCI_FIFOSIZE, align 4
  %183 = shl i32 %182, 16
  %184 = load i32, i32* @MCI_FIFOSIZE, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* @MCI_FIFOSIZE, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %8, align 4
  %192 = mul nsw i32 %191, 65537
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @CMD_SRC_CRCI(i32 %195)
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %230

201:                                              ; preds = %165
  %202 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %203 = call i8* @sg_dma_address(%struct.scatterlist* %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  %206 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %207 = call i8* @msmsdcc_fifo_addr(%struct.msmsdcc_host* %206)
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* @MCI_FIFOSIZE, align 4
  %211 = shl i32 %210, 16
  %212 = load i32, i32* @MCI_FIFOSIZE, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @MCI_FIFOSIZE, align 4
  %217 = shl i32 %216, 16
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %8, align 4
  %221 = mul nsw i32 %220, 65537
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 8
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @CMD_DST_CRCI(i32 %224)
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %201, %173
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 1
  store %struct.TYPE_8__* %232, %struct.TYPE_8__** %7, align 8
  %233 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %234 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %233, i32 1
  store %struct.scatterlist* %234, %struct.scatterlist** %13, align 8
  br label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %11, align 4
  br label %124

238:                                              ; preds = %124
  %239 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %240 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 7
  %244 = call i32 @BUG_ON(i32 %243)
  %245 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %246 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = ashr i32 %248, 3
  %250 = load i32, i32* @CMD_PTR_LP, align 4
  %251 = or i32 %249, %250
  %252 = load %struct.msmsdcc_nc_dmadata*, %struct.msmsdcc_nc_dmadata** %6, align 8
  %253 = getelementptr inbounds %struct.msmsdcc_nc_dmadata, %struct.msmsdcc_nc_dmadata* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* @DMOV_CMD_PTR_LIST, align 4
  %255 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %256 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @DMOV_CMD_ADDR(i32 %258)
  %260 = or i32 %254, %259
  %261 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %262 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  store i32 %260, i32* %264, align 8
  %265 = load i32, i32* @msmsdcc_dma_complete_func, align 4
  %266 = load %struct.msmsdcc_host*, %struct.msmsdcc_host** %4, align 8
  %267 = getelementptr inbounds %struct.msmsdcc_host, %struct.msmsdcc_host* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 1
  store i32 %265, i32* %269, align 4
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %238, %105, %52, %22
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @validate_dma(%struct.msmsdcc_host*, %struct.mmc_data*) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i8* @msmsdcc_fifo_addr(%struct.msmsdcc_host*) #1

declare dso_local i8* @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @CMD_SRC_CRCI(i32) #1

declare dso_local i32 @CMD_DST_CRCI(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DMOV_CMD_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
