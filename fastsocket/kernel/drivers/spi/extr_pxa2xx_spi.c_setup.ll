; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_pxa2xx_spi.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, %struct.pxa2xx_spi_chip*, i32 }
%struct.pxa2xx_spi_chip = type { i64, i64, i64, i64 }
%struct.chip_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i64 }
%struct.driver_data = type { i64, %struct.TYPE_2__*, %struct.ssp_device* }
%struct.TYPE_2__ = type { i64 }
%struct.ssp_device = type { i32 }

@TX_THRESH_DFLT = common dso_local global i64 0, align 8
@RX_THRESH_DFLT = common dso_local global i64 0, align 8
@PXA25x_SSP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"failed setup: ssp_type=%d, bits/wrd=%d b/w not 4-32 for type non-PXA25x_SSP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"failed setup: ssp_type=%d, bits/wrd=%d b/w not 4-16 for type PXA25x_SSP\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"failed setup: can't allocate chip data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TIMOUT_DFLT = common dso_local global i64 0, align 8
@DCMD_BURST8 = common dso_local global i32 0, align 4
@SSCR1_LBM = common dso_local global i32 0, align 4
@SSCR1_RFT = common dso_local global i32 0, align 4
@SSCR1_TFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"in setup: DMA burst size reduced to match bits_per_word\0A\00", align 1
@SSCR0_Motorola = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@SSCR0_EDSS = common dso_local global i32 0, align 4
@SSCR1_SPO = common dso_local global i32 0, align 4
@SSCR1_SPH = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"%ld Hz actual, %s\0A\00", align 1
@SSCR0_SCR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"PIO\00", align 1
@DCMD_WIDTH1 = common dso_local global i32 0, align 4
@u8_reader = common dso_local global i32 0, align 4
@u8_writer = common dso_local global i32 0, align 4
@DCMD_WIDTH2 = common dso_local global i32 0, align 4
@u16_reader = common dso_local global i32 0, align 4
@u16_writer = common dso_local global i32 0, align 4
@DCMD_WIDTH4 = common dso_local global i32 0, align 4
@u32_reader = common dso_local global i32 0, align 4
@u32_writer = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"invalid wordsize\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.pxa2xx_spi_chip*, align 8
  %5 = alloca %struct.chip_data*, align 8
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca %struct.ssp_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.pxa2xx_spi_chip* null, %struct.pxa2xx_spi_chip** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.driver_data* @spi_master_get_devdata(i32 %13)
  store %struct.driver_data* %14, %struct.driver_data** %6, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 2
  %17 = load %struct.ssp_device*, %struct.ssp_device** %16, align 8
  store %struct.ssp_device* %17, %struct.ssp_device** %7, align 8
  %18 = load i64, i64* @TX_THRESH_DFLT, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* @RX_THRESH_DFLT, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PXA25x_SSP, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %1
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 32
  br i1 %34, label %35, label %47

35:                                               ; preds = %30, %25
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 2
  %38 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %42 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %409

47:                                               ; preds = %30, %1
  %48 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %49 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PXA25x_SSP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %55 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 16
  br i1 %62, label %63, label %75

63:                                               ; preds = %58, %53
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 2
  %66 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %67 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %68, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %409

75:                                               ; preds = %58, %47
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %78 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %77)
  store %struct.chip_data* %78, %struct.chip_data** %5, align 8
  %79 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %80 = icmp ne %struct.chip_data* %79, null
  br i1 %80, label %113, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.chip_data* @kzalloc(i32 80, i32 %82)
  store %struct.chip_data* %83, %struct.chip_data** %5, align 8
  %84 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %85 = icmp ne %struct.chip_data* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %88 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %87, i32 0, i32 2
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %409

92:                                               ; preds = %81
  %93 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %94 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %93, i32 0, i32 0
  store i32 -1, i32* %94, align 8
  %95 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %96 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %95, i32 0, i32 9
  store i64 0, i64* %96, align 8
  %97 = load i64, i64* @TIMOUT_DFLT, align 8
  %98 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %99 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %98, i32 0, i32 13
  store i64 %97, i64* %99, align 8
  %100 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %101 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %92
  %107 = load i32, i32* @DCMD_BURST8, align 4
  br label %109

108:                                              ; preds = %92
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %112 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %111, i32 0, i32 12
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %76
  %114 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %115 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %114, i32 0, i32 4
  %116 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %115, align 8
  store %struct.pxa2xx_spi_chip* %116, %struct.pxa2xx_spi_chip** %4, align 8
  %117 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %118 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %117, i32 0, i32 1
  store i32 0, i32* %118, align 4
  %119 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %120 = icmp ne %struct.pxa2xx_spi_chip* %119, null
  br i1 %120, label %121, label %169

121:                                              ; preds = %113
  %122 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %123 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %128 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %131 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %130, i32 0, i32 13
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %126, %121
  %133 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %134 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %139 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %9, align 8
  br label %141

141:                                              ; preds = %137, %132
  %142 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %143 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %148 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %10, align 8
  br label %150

150:                                              ; preds = %146, %141
  %151 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %152 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %157 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %156, i32 0, i32 9
  store i64 %155, i64* %157, align 8
  %158 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %159 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %158, i32 0, i32 11
  store i64 0, i64* %159, align 8
  %160 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %161 = getelementptr inbounds %struct.pxa2xx_spi_chip, %struct.pxa2xx_spi_chip* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %150
  %165 = load i32, i32* @SSCR1_LBM, align 4
  %166 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %167 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %150
  br label %169

169:                                              ; preds = %168, %113
  %170 = load i64, i64* %10, align 8
  %171 = call i32 @SSCR1_RxTresh(i64 %170)
  %172 = load i32, i32* @SSCR1_RFT, align 4
  %173 = and i32 %171, %172
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @SSCR1_TxTresh(i64 %174)
  %176 = load i32, i32* @SSCR1_TFT, align 4
  %177 = and i32 %175, %176
  %178 = or i32 %173, %177
  %179 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %180 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %182 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %181, i32 0, i32 9
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %202

185:                                              ; preds = %169
  %186 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %187 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %188 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %189 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %192 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %191, i32 0, i32 12
  %193 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %194 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %193, i32 0, i32 11
  %195 = call i64 @set_dma_burst_and_threshold(%struct.chip_data* %186, %struct.spi_device* %187, i32 %190, i32* %192, i64* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %185
  %198 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %199 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %198, i32 0, i32 2
  %200 = call i32 @dev_warn(i32* %199, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  br label %201

201:                                              ; preds = %197, %185
  br label %202

202:                                              ; preds = %201, %169
  %203 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %204 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %205 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ssp_get_clk_div(%struct.ssp_device* %203, i32 %206)
  store i32 %207, i32* %8, align 4
  %208 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %209 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %212 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %211, i32 0, i32 10
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @SSCR0_Motorola, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 16
  br i1 %219, label %220, label %225

220:                                              ; preds = %202
  %221 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %222 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sub nsw i32 %223, 16
  br label %229

225:                                              ; preds = %202
  %226 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %227 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  br label %229

229:                                              ; preds = %225, %220
  %230 = phi i32 [ %224, %220 ], [ %228, %225 ]
  %231 = call i32 @SSCR0_DataSize(i32 %230)
  %232 = or i32 %215, %231
  %233 = load i32, i32* @SSCR0_SSE, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %236 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp sgt i32 %237, 16
  br i1 %238, label %239, label %241

239:                                              ; preds = %229
  %240 = load i32, i32* @SSCR0_EDSS, align 4
  br label %242

241:                                              ; preds = %229
  br label %242

242:                                              ; preds = %241, %239
  %243 = phi i32 [ %240, %239 ], [ 0, %241 ]
  %244 = or i32 %234, %243
  %245 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %246 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* @SSCR1_SPO, align 4
  %248 = load i32, i32* @SSCR1_SPH, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %252 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %256 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @SPI_CPHA, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %242
  %262 = load i32, i32* @SSCR1_SPH, align 4
  br label %264

263:                                              ; preds = %242
  br label %264

264:                                              ; preds = %263, %261
  %265 = phi i32 [ %262, %261 ], [ 0, %263 ]
  %266 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %267 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @SPI_CPOL, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %264
  %273 = load i32, i32* @SSCR1_SPO, align 4
  br label %275

274:                                              ; preds = %264
  br label %275

275:                                              ; preds = %274, %272
  %276 = phi i32 [ %273, %272 ], [ 0, %274 ]
  %277 = or i32 %265, %276
  %278 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %279 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %283 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @PXA25x_SSP, align 8
  %286 = icmp ne i64 %284, %285
  br i1 %286, label %287, label %309

287:                                              ; preds = %275
  %288 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %289 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %288, i32 0, i32 2
  %290 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %291 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @clk_get_rate(i32 %292)
  %294 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %295 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @SSCR0_SCR, align 4
  %298 = and i32 %296, %297
  %299 = lshr i32 %298, 8
  %300 = add i32 1, %299
  %301 = udiv i32 %293, %300
  %302 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %303 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %302, i32 0, i32 9
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %308 = call i32 @dev_dbg(i32* %289, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %301, i8* %307)
  br label %332

309:                                              ; preds = %275
  %310 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %311 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %310, i32 0, i32 2
  %312 = load %struct.ssp_device*, %struct.ssp_device** %7, align 8
  %313 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @clk_get_rate(i32 %314)
  %316 = sdiv i32 %315, 2
  %317 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %318 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @SSCR0_SCR, align 4
  %321 = and i32 %319, %320
  %322 = lshr i32 %321, 8
  %323 = add i32 1, %322
  %324 = udiv i32 %316, %323
  %325 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %326 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %325, i32 0, i32 9
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  %329 = zext i1 %328 to i64
  %330 = select i1 %328, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %331 = call i32 @dev_dbg(i32* %311, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %324, i8* %330)
  br label %332

332:                                              ; preds = %309, %287
  %333 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %334 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = icmp sle i32 %335, 8
  br i1 %336, label %337, label %349

337:                                              ; preds = %332
  %338 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %339 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %338, i32 0, i32 4
  store i32 1, i32* %339, align 8
  %340 = load i32, i32* @DCMD_WIDTH1, align 4
  %341 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %342 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %341, i32 0, i32 8
  store i32 %340, i32* %342, align 8
  %343 = load i32, i32* @u8_reader, align 4
  %344 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %345 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %344, i32 0, i32 7
  store i32 %343, i32* %345, align 4
  %346 = load i32, i32* @u8_writer, align 4
  %347 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %348 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %347, i32 0, i32 6
  store i32 %346, i32* %348, align 8
  br label %396

349:                                              ; preds = %332
  %350 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %351 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = icmp sle i32 %352, 16
  br i1 %353, label %354, label %366

354:                                              ; preds = %349
  %355 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %356 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %355, i32 0, i32 4
  store i32 2, i32* %356, align 8
  %357 = load i32, i32* @DCMD_WIDTH2, align 4
  %358 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %359 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %358, i32 0, i32 8
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* @u16_reader, align 4
  %361 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %362 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %361, i32 0, i32 7
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* @u16_writer, align 4
  %364 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %365 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %364, i32 0, i32 6
  store i32 %363, i32* %365, align 8
  br label %395

366:                                              ; preds = %349
  %367 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %368 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = icmp sle i32 %369, 32
  br i1 %370, label %371, label %388

371:                                              ; preds = %366
  %372 = load i32, i32* @SSCR0_EDSS, align 4
  %373 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %374 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = or i32 %375, %372
  store i32 %376, i32* %374, align 4
  %377 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %378 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %377, i32 0, i32 4
  store i32 4, i32* %378, align 8
  %379 = load i32, i32* @DCMD_WIDTH4, align 4
  %380 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %381 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %380, i32 0, i32 8
  store i32 %379, i32* %381, align 8
  %382 = load i32, i32* @u32_reader, align 4
  %383 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %384 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %383, i32 0, i32 7
  store i32 %382, i32* %384, align 4
  %385 = load i32, i32* @u32_writer, align 4
  %386 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %387 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %386, i32 0, i32 6
  store i32 %385, i32* %387, align 8
  br label %394

388:                                              ; preds = %366
  %389 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %390 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %389, i32 0, i32 2
  %391 = call i32 (i32*, i8*, ...) @dev_err(i32* %390, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %392 = load i32, i32* @ENODEV, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %2, align 4
  br label %409

394:                                              ; preds = %371
  br label %395

395:                                              ; preds = %394, %354
  br label %396

396:                                              ; preds = %395, %337
  %397 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %398 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %401 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %400, i32 0, i32 5
  store i32 %399, i32* %401, align 4
  %402 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %403 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %404 = call i32 @spi_set_ctldata(%struct.spi_device* %402, %struct.chip_data* %403)
  %405 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %406 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %407 = load %struct.pxa2xx_spi_chip*, %struct.pxa2xx_spi_chip** %4, align 8
  %408 = call i32 @setup_cs(%struct.spi_device* %405, %struct.chip_data* %406, %struct.pxa2xx_spi_chip* %407)
  store i32 %408, i32* %2, align 4
  br label %409

409:                                              ; preds = %396, %388, %86, %63, %35
  %410 = load i32, i32* %2, align 4
  ret i32 %410
}

declare dso_local %struct.driver_data* @spi_master_get_devdata(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.chip_data* @kzalloc(i32, i32) #1

declare dso_local i32 @SSCR1_RxTresh(i64) #1

declare dso_local i32 @SSCR1_TxTresh(i64) #1

declare dso_local i64 @set_dma_burst_and_threshold(%struct.chip_data*, %struct.spi_device*, i32, i32*, i64*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ssp_get_clk_div(%struct.ssp_device*, i32) #1

declare dso_local i32 @SSCR0_DataSize(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.chip_data*) #1

declare dso_local i32 @setup_cs(%struct.spi_device*, %struct.chip_data*, %struct.pxa2xx_spi_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
