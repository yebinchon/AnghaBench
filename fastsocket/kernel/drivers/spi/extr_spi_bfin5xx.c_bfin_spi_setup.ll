; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_bfin5xx.c_bfin_spi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.bfin5xx_spi_chip* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.bfin5xx_spi_chip = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.chip_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.driver_data = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPE = common dso_local global i32 0, align 4
@MSTR = common dso_local global i32 0, align 4
@CPOL = common dso_local global i32 0, align 4
@CPHA = common dso_local global i32 0, align 4
@LSBF = common dso_local global i32 0, align 4
@SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"do not set bits in ctl_reg that the SPI framework manages\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"BFIN_SPI_DMA\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unable to request BlackFin SPI DMA channel\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@bfin_spi_dma_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Unable to set dma callback\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@CFG_SPI_WORDSIZE8 = common dso_local global i32 0, align 4
@bfin_spi_u8_cs_chg_reader = common dso_local global i32 0, align 4
@bfin_spi_u8_reader = common dso_local global i32 0, align 4
@bfin_spi_u8_cs_chg_writer = common dso_local global i32 0, align 4
@bfin_spi_u8_writer = common dso_local global i32 0, align 4
@bfin_spi_u8_cs_chg_duplex = common dso_local global i32 0, align 4
@bfin_spi_u8_duplex = common dso_local global i32 0, align 4
@CFG_SPI_WORDSIZE16 = common dso_local global i32 0, align 4
@bfin_spi_u16_cs_chg_reader = common dso_local global i32 0, align 4
@bfin_spi_u16_reader = common dso_local global i32 0, align 4
@bfin_spi_u16_cs_chg_writer = common dso_local global i32 0, align 4
@bfin_spi_u16_writer = common dso_local global i32 0, align 4
@bfin_spi_u16_cs_chg_duplex = common dso_local global i32 0, align 4
@bfin_spi_u16_duplex = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"%d bits_per_word is not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"setup spi chip %s, width is %d, dma is %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"ctl_reg is 0x%x, flag_reg is 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"chip select number is %d\0A\00", align 1
@ssel = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @bfin_spi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_spi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.bfin5xx_spi_chip*, align 8
  %5 = alloca %struct.chip_data*, align 8
  %6 = alloca %struct.driver_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.bfin5xx_spi_chip* null, %struct.bfin5xx_spi_chip** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.driver_data* @spi_master_get_devdata(%struct.TYPE_4__* %10)
  store %struct.driver_data* %11, %struct.driver_data** %6, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 8
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %424

24:                                               ; preds = %16, %1
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = call %struct.chip_data* @spi_get_ctldata(%struct.spi_device* %25)
  store %struct.chip_data* %26, %struct.chip_data** %5, align 8
  %27 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %28 = icmp eq %struct.chip_data* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.chip_data* @kzalloc(i32 60, i32 %30)
  store %struct.chip_data* %31, %struct.chip_data** %5, align 8
  %32 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %33 = icmp ne %struct.chip_data* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %424

37:                                               ; preds = %29
  %38 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %39 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 7
  %42 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %41, align 8
  store %struct.bfin5xx_spi_chip* %42, %struct.bfin5xx_spi_chip** %4, align 8
  br label %43

43:                                               ; preds = %37, %24
  %44 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %45 = icmp ne %struct.bfin5xx_spi_chip* %44, null
  br i1 %45, label %46, label %116

46:                                               ; preds = %43
  %47 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %48 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SPE, align 4
  %51 = load i32, i32* @MSTR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CPOL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @CPHA, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @LSBF, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @SIZE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %49, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %46
  %64 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %65 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %64, i32 0, i32 5
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %424

69:                                               ; preds = %46
  %70 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %71 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %76 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %74, %69
  %82 = phi i1 [ false, %69 ], [ %80, %74 ]
  %83 = zext i1 %82 to i32
  %84 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %85 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %87 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %90 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %92 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %95 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %97 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %100 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %102 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %105 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %104, i32 0, i32 14
  store i32 %103, i32* %105, align 4
  %106 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %107 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %110 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %112 = getelementptr inbounds %struct.bfin5xx_spi_chip, %struct.bfin5xx_spi_chip* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %115 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %81, %43
  %117 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %118 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SPI_CPOL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %116
  %124 = load i32, i32* @CPOL, align 4
  %125 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %126 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %123, %116
  %130 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %131 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SPI_CPHA, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i32, i32* @CPHA, align 4
  %138 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %139 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %136, %129
  %143 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %144 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SPI_LSB_FIRST, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %142
  %150 = load i32, i32* @LSBF, align 4
  %151 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %152 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %142
  %156 = load i32, i32* @MSTR, align 4
  %157 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %158 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %162 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %155
  %166 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %167 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %203, label %170

170:                                              ; preds = %165
  %171 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %172 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @request_dma(i32 %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %175 = icmp slt i64 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %178 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %177, i32 0, i32 5
  %179 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %180 = load i32, i32* @ENODEV, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %424

182:                                              ; preds = %170
  %183 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %184 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @bfin_spi_dma_irq_handler, align 4
  %187 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %188 = call i64 @set_dma_callback(i32 %185, i32 %186, %struct.driver_data* %187)
  %189 = icmp slt i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %182
  %191 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %192 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %191, i32 0, i32 5
  %193 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %192, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %194 = load i32, i32* @EPERM, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %2, align 4
  br label %424

196:                                              ; preds = %182
  %197 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %198 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @dma_disable_irq(i32 %199)
  %201 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %202 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %201, i32 0, i32 0
  store i32 1, i32* %202, align 8
  br label %203

203:                                              ; preds = %196, %165, %155
  %204 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %205 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %204, i32 0, i32 6
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @hz_to_spi_baud(i32 %206)
  %208 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %209 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %208, i32 0, i32 12
  store i32 %207, i32* %209, align 4
  %210 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %211 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = shl i32 1, %212
  %214 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %215 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %214, i32 0, i32 3
  store i32 %213, i32* %215, align 4
  %216 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %217 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %220 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 4
  %221 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %222 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %252

225:                                              ; preds = %203
  %226 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %227 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %230 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @gpio_request(i32 %228, i32 %231)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %247

235:                                              ; preds = %225
  %236 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %237 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %242 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @free_dma(i32 %243)
  br label %245

245:                                              ; preds = %240, %235
  %246 = load i32, i32* %7, align 4
  store i32 %246, i32* %2, align 4
  br label %424

247:                                              ; preds = %225
  %248 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %249 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %248, i32 0, i32 11
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @gpio_direction_output(i32 %250, i32 1)
  br label %252

252:                                              ; preds = %247, %203
  %253 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %254 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  switch i32 %255, label %340 [
    i32 8, label %256
    i32 16, label %298
  ]

256:                                              ; preds = %252
  %257 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %258 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %257, i32 0, i32 5
  store i32 1, i32* %258, align 4
  %259 = load i32, i32* @CFG_SPI_WORDSIZE8, align 4
  %260 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %261 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 4
  %262 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %263 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %256
  %267 = load i32, i32* @bfin_spi_u8_cs_chg_reader, align 4
  br label %270

268:                                              ; preds = %256
  %269 = load i32, i32* @bfin_spi_u8_reader, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  %272 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %273 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %272, i32 0, i32 10
  store i32 %271, i32* %273, align 4
  %274 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %275 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = load i32, i32* @bfin_spi_u8_cs_chg_writer, align 4
  br label %282

280:                                              ; preds = %270
  %281 = load i32, i32* @bfin_spi_u8_writer, align 4
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ %279, %278 ], [ %281, %280 ]
  %284 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %285 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %284, i32 0, i32 9
  store i32 %283, i32* %285, align 4
  %286 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %287 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %282
  %291 = load i32, i32* @bfin_spi_u8_cs_chg_duplex, align 4
  br label %294

292:                                              ; preds = %282
  %293 = load i32, i32* @bfin_spi_u8_duplex, align 4
  br label %294

294:                                              ; preds = %292, %290
  %295 = phi i32 [ %291, %290 ], [ %293, %292 ]
  %296 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %297 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %296, i32 0, i32 8
  store i32 %295, i32* %297, align 4
  br label %355

298:                                              ; preds = %252
  %299 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %300 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %299, i32 0, i32 5
  store i32 2, i32* %300, align 4
  %301 = load i32, i32* @CFG_SPI_WORDSIZE16, align 4
  %302 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %303 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %302, i32 0, i32 6
  store i32 %301, i32* %303, align 4
  %304 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %305 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %304, i32 0, i32 7
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %298
  %309 = load i32, i32* @bfin_spi_u16_cs_chg_reader, align 4
  br label %312

310:                                              ; preds = %298
  %311 = load i32, i32* @bfin_spi_u16_reader, align 4
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi i32 [ %309, %308 ], [ %311, %310 ]
  %314 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %315 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %314, i32 0, i32 10
  store i32 %313, i32* %315, align 4
  %316 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %317 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %312
  %321 = load i32, i32* @bfin_spi_u16_cs_chg_writer, align 4
  br label %324

322:                                              ; preds = %312
  %323 = load i32, i32* @bfin_spi_u16_writer, align 4
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i32 [ %321, %320 ], [ %323, %322 ]
  %326 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %327 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %326, i32 0, i32 9
  store i32 %325, i32* %327, align 4
  %328 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %329 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %328, i32 0, i32 7
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %324
  %333 = load i32, i32* @bfin_spi_u16_cs_chg_duplex, align 4
  br label %336

334:                                              ; preds = %324
  %335 = load i32, i32* @bfin_spi_u16_duplex, align 4
  br label %336

336:                                              ; preds = %334, %332
  %337 = phi i32 [ %333, %332 ], [ %335, %334 ]
  %338 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %339 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %338, i32 0, i32 8
  store i32 %337, i32* %339, align 4
  br label %355

340:                                              ; preds = %252
  %341 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %342 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %341, i32 0, i32 5
  %343 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %344 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32*, i8*, ...) @dev_err(i32* %342, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %345)
  %347 = load %struct.bfin5xx_spi_chip*, %struct.bfin5xx_spi_chip** %4, align 8
  %348 = icmp ne %struct.bfin5xx_spi_chip* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %340
  %350 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %351 = call i32 @kfree(%struct.chip_data* %350)
  br label %352

352:                                              ; preds = %349, %340
  %353 = load i32, i32* @ENODEV, align 4
  %354 = sub nsw i32 0, %353
  store i32 %354, i32* %2, align 4
  br label %424

355:                                              ; preds = %336, %294
  %356 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %357 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %356, i32 0, i32 5
  %358 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %359 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %362 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %365 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %357, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %360, i32 %363, i32 %366)
  %368 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %369 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %368, i32 0, i32 5
  %370 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %371 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %374 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %369, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %372, i32 %375)
  %377 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %378 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %379 = call i32 @spi_set_ctldata(%struct.spi_device* %377, %struct.chip_data* %378)
  %380 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %381 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %380, i32 0, i32 5
  %382 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %383 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 4
  %385 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %381, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %384)
  %386 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %387 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %386, i32 0, i32 4
  %388 = load i32, i32* %387, align 4
  %389 = icmp sgt i32 %388, 0
  br i1 %389, label %390, label %420

390:                                              ; preds = %355
  %391 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %392 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %395 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %394, i32 0, i32 4
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = icmp sle i32 %393, %398
  br i1 %399, label %400, label %420

400:                                              ; preds = %390
  %401 = load i32**, i32*** @ssel, align 8
  %402 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %403 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %402, i32 0, i32 4
  %404 = load %struct.TYPE_4__*, %struct.TYPE_4__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds i32*, i32** %401, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %410 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = sub nsw i32 %411, 1
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %408, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %417 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  %419 = call i32 @peripheral_request(i32 %415, i32 %418)
  br label %420

420:                                              ; preds = %400, %390, %355
  %421 = load %struct.driver_data*, %struct.driver_data** %6, align 8
  %422 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  %423 = call i32 @bfin_spi_cs_deactive(%struct.driver_data* %421, %struct.chip_data* %422)
  store i32 0, i32* %2, align 4
  br label %424

424:                                              ; preds = %420, %352, %245, %190, %176, %63, %34, %21
  %425 = load i32, i32* %2, align 4
  ret i32 %425
}

declare dso_local %struct.driver_data* @spi_master_get_devdata(%struct.TYPE_4__*) #1

declare dso_local %struct.chip_data* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local %struct.chip_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @request_dma(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i64 @set_dma_callback(i32, i32, %struct.driver_data*) #1

declare dso_local i32 @dma_disable_irq(i32) #1

declare dso_local i32 @hz_to_spi_baud(i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @free_dma(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @kfree(%struct.chip_data*) #1

declare dso_local i32 @spi_set_ctldata(%struct.spi_device*, %struct.chip_data*) #1

declare dso_local i32 @peripheral_request(i32, i32) #1

declare dso_local i32 @bfin_spi_cs_deactive(%struct.driver_data*, %struct.chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
