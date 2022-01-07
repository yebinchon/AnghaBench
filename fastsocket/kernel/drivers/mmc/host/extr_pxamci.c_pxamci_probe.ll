; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_pxamci.c_pxamci_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_pxamci.c_pxamci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i32 (%struct.TYPE_10__*, i32, %struct.pxamci_host*)*, i32 }
%struct.pxamci_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64, i64, %struct.TYPE_9__*, i32, i32, %struct.resource*, i32, i32, i32, %struct.pxamci_host*, i32, i32, i32* }
%struct.resource = type { i32 }
%struct.mmc_host = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i64, i64, %struct.TYPE_9__*, i32, i32, %struct.resource*, i32, i32, i32, %struct.mmc_host*, i32, i32, i32* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i8* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pxamci_ops = common dso_local global i32 0, align 4
@NR_SG = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CLKRT_OFF = common dso_local global i32 0, align 4
@MMC_CAP_4_BIT_DATA = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@CMDAT_SDIO_INT_EN = common dso_local global i32 0, align 4
@MMC_CAP_MMC_HIGHSPEED = common dso_local global i32 0, align 4
@MMC_CAP_SD_HIGHSPEED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MMC_I_MASK_ALL = common dso_local global i32 0, align 4
@MMC_SPI = common dso_local global i64 0, align 8
@MMC_RESTO = common dso_local global i64 0, align 8
@MMC_I_MASK = common dso_local global i64 0, align 8
@DMA_PRIO_LOW = common dso_local global i32 0, align 4
@pxamci_dma_irq = common dso_local global i32 0, align 4
@pxamci_irq = common dso_local global i32 0, align 4
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mmc card power\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed requesting gpio_power %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"mmc card read only\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed requesting gpio_ro %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mmc card detect\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed requesting gpio_cd %d\0A\00", align 1
@pxamci_detect_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to request card detect IRQ\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"gpio_power and setpower() both defined\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"gpio_ro and get_ro() both defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxamci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxamci_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca %struct.pxamci_host*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.pxamci_host* null, %struct.pxamci_host** %5, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 %15, i32 0)
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = call i32 @platform_get_irq(%struct.platform_device* %17, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.resource*, %struct.resource** %6, align 8
  %20 = icmp ne %struct.resource* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %510

27:                                               ; preds = %21
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SZ_4K, align 4
  %32 = load i8*, i8** @DRIVER_NAME, align 8
  %33 = call %struct.resource* @request_mem_region(i32 %30, i32 %31, i8* %32)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %510

39:                                               ; preds = %27
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call %struct.pxamci_host* @mmc_alloc_host(i32 136, %struct.TYPE_10__* %41)
  %43 = bitcast %struct.pxamci_host* %42 to %struct.mmc_host*
  store %struct.mmc_host* %43, %struct.mmc_host** %4, align 8
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = icmp ne %struct.mmc_host* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %449

49:                                               ; preds = %39
  %50 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %50, i32 0, i32 23
  store i32* @pxamci_ops, i32** %51, align 8
  %52 = load i32, i32* @NR_SG, align 4
  %53 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %53, i32 0, i32 22
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %57 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %56, i32 0, i32 21
  store i32 %55, i32* %57, align 8
  %58 = call i64 (...) @cpu_is_pxa25x()
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1023, i32 2048
  %62 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %63 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %64, i32 0, i32 1
  store i32 65535, i32* %65, align 4
  %66 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %67 = bitcast %struct.mmc_host* %66 to %struct.pxamci_host*
  %68 = call %struct.pxamci_host* @mmc_priv(%struct.pxamci_host* %67)
  store %struct.pxamci_host* %68, %struct.pxamci_host** %5, align 8
  %69 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %70 = bitcast %struct.mmc_host* %69 to %struct.pxamci_host*
  %71 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %72 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %71, i32 0, i32 20
  store %struct.pxamci_host* %70, %struct.pxamci_host** %72, align 8
  %73 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %74 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %73, i32 0, i32 2
  store i32 -1, i32* %74, align 8
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %80 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %79, i32 0, i32 13
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %80, align 8
  %81 = load i32, i32* @CLKRT_OFF, align 4
  %82 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %83 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %82, i32 0, i32 19
  store i32 %81, i32* %83, align 8
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32* @clk_get(%struct.TYPE_10__* %85, i32* null)
  %87 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %88 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %87, i32 0, i32 9
  store i32* %86, i32** %88, align 8
  %89 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %90 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %89, i32 0, i32 9
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @IS_ERR(i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %49
  %95 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %96 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %95, i32 0, i32 9
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @PTR_ERR(i32* %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %100 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %99, i32 0, i32 9
  store i32* null, i32** %100, align 8
  br label %449

101:                                              ; preds = %49
  %102 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %103 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %102, i32 0, i32 9
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @clk_get_rate(i32* %104)
  %106 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %107 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %109 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 63
  %112 = sdiv i32 %111, 64
  %113 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %114 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = call i64 (...) @cpu_is_pxa300()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %101
  %118 = call i64 (...) @cpu_is_pxa310()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %101
  br label %125

121:                                              ; preds = %117
  %122 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %123 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  br label %125

125:                                              ; preds = %121, %120
  %126 = phi i32 [ 26000000, %120 ], [ %124, %121 ]
  %127 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %128 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  %129 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %130 = call i32 @pxamci_init_ocr(%struct.pxamci_host* %129)
  %131 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %132 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %131, i32 0, i32 6
  store i32 0, i32* %132, align 8
  %133 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %134 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %133, i32 0, i32 18
  store i32 0, i32* %134, align 4
  %135 = call i64 (...) @cpu_is_pxa25x()
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %164, label %137

137:                                              ; preds = %125
  %138 = load i32, i32* @MMC_CAP_4_BIT_DATA, align 4
  %139 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %142 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @CMDAT_SDIO_INT_EN, align 4
  %146 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %147 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %146, i32 0, i32 18
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = call i64 (...) @cpu_is_pxa300()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %137
  %153 = call i64 (...) @cpu_is_pxa310()
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152, %137
  %156 = load i32, i32* @MMC_CAP_MMC_HIGHSPEED, align 4
  %157 = load i32, i32* @MMC_CAP_SD_HIGHSPEED, align 4
  %158 = or i32 %156, %157
  %159 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %160 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %155, %152
  br label %164

164:                                              ; preds = %163, %125
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = load i32, i32* @PAGE_SIZE, align 4
  %168 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %169 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %168, i32 0, i32 10
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i64 @dma_alloc_coherent(%struct.TYPE_10__* %166, i32 %167, i32* %169, i32 %170)
  %172 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %173 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %172, i32 0, i32 11
  store i64 %171, i64* %173, align 8
  %174 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %175 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %174, i32 0, i32 11
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %164
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %9, align 4
  br label %449

181:                                              ; preds = %164
  %182 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %183 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %182, i32 0, i32 17
  %184 = call i32 @spin_lock_init(i32* %183)
  %185 = load %struct.resource*, %struct.resource** %6, align 8
  %186 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %187 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %186, i32 0, i32 16
  store %struct.resource* %185, %struct.resource** %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %190 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @MMC_I_MASK_ALL, align 4
  %192 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %193 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %192, i32 0, i32 8
  store i32 %191, i32* %193, align 8
  %194 = load %struct.resource*, %struct.resource** %6, align 8
  %195 = getelementptr inbounds %struct.resource, %struct.resource* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @SZ_4K, align 4
  %198 = call i64 @ioremap(i32 %196, i32 %197)
  %199 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %200 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %199, i32 0, i32 12
  store i64 %198, i64* %200, align 8
  %201 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %202 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %201, i32 0, i32 12
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %181
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %9, align 4
  br label %449

208:                                              ; preds = %181
  %209 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %210 = call i32 @pxamci_stop_clock(%struct.pxamci_host* %209)
  %211 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %212 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %211, i32 0, i32 12
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @MMC_SPI, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @writel(i32 0, i64 %215)
  %217 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %218 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %217, i32 0, i32 12
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @MMC_RESTO, align 8
  %221 = add nsw i64 %219, %220
  %222 = call i32 @writel(i32 64, i64 %221)
  %223 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %224 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %227 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %226, i32 0, i32 12
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @MMC_I_MASK, align 8
  %230 = add nsw i64 %228, %229
  %231 = call i32 @writel(i32 %225, i64 %230)
  %232 = load i8*, i8** @DRIVER_NAME, align 8
  %233 = load i32, i32* @DMA_PRIO_LOW, align 4
  %234 = load i32, i32* @pxamci_dma_irq, align 4
  %235 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %236 = call i32 @pxa_request_dma(i8* %232, i32 %233, i32 %234, %struct.pxamci_host* %235)
  %237 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %238 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %240 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %208
  %244 = load i32, i32* @EBUSY, align 4
  %245 = sub nsw i32 0, %244
  store i32 %245, i32* %9, align 4
  br label %449

246:                                              ; preds = %208
  %247 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %248 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @pxamci_irq, align 4
  %251 = load i8*, i8** @DRIVER_NAME, align 8
  %252 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %253 = call i32 @request_irq(i32 %249, i32 %250, i32 0, i8* %251, %struct.pxamci_host* %252)
  store i32 %253, i32* %9, align 4
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  br label %449

257:                                              ; preds = %246
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %260 = bitcast %struct.mmc_host* %259 to %struct.pxamci_host*
  %261 = call i32 @platform_set_drvdata(%struct.platform_device* %258, %struct.pxamci_host* %260)
  %262 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %263 = load i32, i32* @IORESOURCE_DMA, align 4
  %264 = call %struct.resource* @platform_get_resource(%struct.platform_device* %262, i32 %263, i32 0)
  store %struct.resource* %264, %struct.resource** %7, align 8
  %265 = load %struct.resource*, %struct.resource** %7, align 8
  %266 = icmp ne %struct.resource* %265, null
  br i1 %266, label %270, label %267

267:                                              ; preds = %257
  %268 = load i32, i32* @ENXIO, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %9, align 4
  br label %449

270:                                              ; preds = %257
  %271 = load %struct.resource*, %struct.resource** %7, align 8
  %272 = getelementptr inbounds %struct.resource, %struct.resource* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %275 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %274, i32 0, i32 15
  store i32 %273, i32* %275, align 4
  %276 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %277 = load i32, i32* @IORESOURCE_DMA, align 4
  %278 = call %struct.resource* @platform_get_resource(%struct.platform_device* %276, i32 %277, i32 1)
  store %struct.resource* %278, %struct.resource** %8, align 8
  %279 = load %struct.resource*, %struct.resource** %8, align 8
  %280 = icmp ne %struct.resource* %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %270
  %282 = load i32, i32* @ENXIO, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %9, align 4
  br label %449

284:                                              ; preds = %270
  %285 = load %struct.resource*, %struct.resource** %8, align 8
  %286 = getelementptr inbounds %struct.resource, %struct.resource* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %289 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %288, i32 0, i32 14
  store i32 %287, i32* %289, align 8
  %290 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %291 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %290, i32 0, i32 13
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = icmp ne %struct.TYPE_9__* %292, null
  br i1 %293, label %294, label %310

294:                                              ; preds = %284
  %295 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %296 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %295, i32 0, i32 13
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  store i32 %299, i32* %11, align 4
  %300 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %301 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %300, i32 0, i32 13
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %12, align 4
  %305 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %306 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %305, i32 0, i32 13
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %294, %284
  %311 = load i32, i32* %13, align 4
  %312 = call i64 @gpio_is_valid(i32 %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %332

314:                                              ; preds = %310
  %315 = load i32, i32* %13, align 4
  %316 = call i32 @gpio_request(i32 %315, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %314
  %320 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %321 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %320, i32 0, i32 0
  %322 = load i32, i32* %13, align 4
  %323 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %321, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %322)
  br label %449

324:                                              ; preds = %314
  %325 = load i32, i32* %13, align 4
  %326 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %327 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %326, i32 0, i32 13
  %328 = load %struct.TYPE_9__*, %struct.TYPE_9__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @gpio_direction_output(i32 %325, i32 %330)
  br label %332

332:                                              ; preds = %324, %310
  %333 = load i32, i32* %12, align 4
  %334 = call i64 @gpio_is_valid(i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %349

336:                                              ; preds = %332
  %337 = load i32, i32* %12, align 4
  %338 = call i32 @gpio_request(i32 %337, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %338, i32* %9, align 4
  %339 = load i32, i32* %9, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %336
  %342 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %343 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %342, i32 0, i32 0
  %344 = load i32, i32* %12, align 4
  %345 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %343, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %344)
  br label %446

346:                                              ; preds = %336
  %347 = load i32, i32* %12, align 4
  %348 = call i32 @gpio_direction_input(i32 %347)
  br label %349

349:                                              ; preds = %346, %332
  %350 = load i32, i32* %11, align 4
  %351 = call i64 @gpio_is_valid(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %382

353:                                              ; preds = %349
  %354 = load i32, i32* %11, align 4
  %355 = call i32 @gpio_request(i32 %354, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 %355, i32* %9, align 4
  %356 = load i32, i32* %9, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %353
  %359 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %360 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %359, i32 0, i32 0
  %361 = load i32, i32* %11, align 4
  %362 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %360, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %361)
  br label %443

363:                                              ; preds = %353
  %364 = load i32, i32* %11, align 4
  %365 = call i32 @gpio_direction_input(i32 %364)
  %366 = load i32, i32* %11, align 4
  %367 = call i32 @gpio_to_irq(i32 %366)
  %368 = load i32, i32* @pxamci_detect_irq, align 4
  %369 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %370 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %371 = or i32 %369, %370
  %372 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %373 = bitcast %struct.mmc_host* %372 to %struct.pxamci_host*
  %374 = call i32 @request_irq(i32 %367, i32 %368, i32 %371, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), %struct.pxamci_host* %373)
  store i32 %374, i32* %9, align 4
  %375 = load i32, i32* %9, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %363
  %378 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %379 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %378, i32 0, i32 0
  %380 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %379, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %440

381:                                              ; preds = %363
  br label %382

382:                                              ; preds = %381, %349
  %383 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %384 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %383, i32 0, i32 13
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %384, align 8
  %386 = icmp ne %struct.TYPE_9__* %385, null
  br i1 %386, label %387, label %406

387:                                              ; preds = %382
  %388 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %389 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %388, i32 0, i32 13
  %390 = load %struct.TYPE_9__*, %struct.TYPE_9__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %390, i32 0, i32 5
  %392 = load i32 (%struct.TYPE_10__*, i32, %struct.pxamci_host*)*, i32 (%struct.TYPE_10__*, i32, %struct.pxamci_host*)** %391, align 8
  %393 = icmp ne i32 (%struct.TYPE_10__*, i32, %struct.pxamci_host*)* %392, null
  br i1 %393, label %394, label %406

394:                                              ; preds = %387
  %395 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %396 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %395, i32 0, i32 13
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 5
  %399 = load i32 (%struct.TYPE_10__*, i32, %struct.pxamci_host*)*, i32 (%struct.TYPE_10__*, i32, %struct.pxamci_host*)** %398, align 8
  %400 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %401 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %400, i32 0, i32 0
  %402 = load i32, i32* @pxamci_detect_irq, align 4
  %403 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %404 = bitcast %struct.mmc_host* %403 to %struct.pxamci_host*
  %405 = call i32 %399(%struct.TYPE_10__* %401, i32 %402, %struct.pxamci_host* %404)
  br label %406

406:                                              ; preds = %394, %387, %382
  %407 = load i32, i32* %13, align 4
  %408 = call i64 @gpio_is_valid(i32 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %421

410:                                              ; preds = %406
  %411 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %412 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %411, i32 0, i32 13
  %413 = load %struct.TYPE_9__*, %struct.TYPE_9__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 4
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %410
  %418 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %419 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %418, i32 0, i32 0
  %420 = call i32 @dev_warn(%struct.TYPE_10__* %419, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  br label %421

421:                                              ; preds = %417, %410, %406
  %422 = load i32, i32* %12, align 4
  %423 = call i64 @gpio_is_valid(i32 %422)
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %436

425:                                              ; preds = %421
  %426 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %427 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %426, i32 0, i32 13
  %428 = load %struct.TYPE_9__*, %struct.TYPE_9__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %428, i32 0, i32 3
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %425
  %433 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %434 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %433, i32 0, i32 0
  %435 = call i32 @dev_warn(%struct.TYPE_10__* %434, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %436

436:                                              ; preds = %432, %425, %421
  %437 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %438 = bitcast %struct.mmc_host* %437 to %struct.pxamci_host*
  %439 = call i32 @mmc_add_host(%struct.pxamci_host* %438)
  store i32 0, i32* %2, align 4
  br label %510

440:                                              ; preds = %377
  %441 = load i32, i32* %11, align 4
  %442 = call i32 @gpio_free(i32 %441)
  br label %443

443:                                              ; preds = %440, %358
  %444 = load i32, i32* %12, align 4
  %445 = call i32 @gpio_free(i32 %444)
  br label %446

446:                                              ; preds = %443, %341
  %447 = load i32, i32* %13, align 4
  %448 = call i32 @gpio_free(i32 %447)
  br label %449

449:                                              ; preds = %446, %319, %281, %267, %256, %243, %205, %178, %94, %46
  %450 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %451 = icmp ne %struct.pxamci_host* %450, null
  br i1 %451, label %452, label %499

452:                                              ; preds = %449
  %453 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %454 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 8
  %456 = icmp sge i32 %455, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %452
  %458 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %459 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = call i32 @pxa_free_dma(i32 %460)
  br label %462

462:                                              ; preds = %457, %452
  %463 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %464 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %463, i32 0, i32 12
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %462
  %468 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %469 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %468, i32 0, i32 12
  %470 = load i64, i64* %469, align 8
  %471 = call i32 @iounmap(i64 %470)
  br label %472

472:                                              ; preds = %467, %462
  %473 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %474 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %473, i32 0, i32 11
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %488

477:                                              ; preds = %472
  %478 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %479 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %478, i32 0, i32 0
  %480 = load i32, i32* @PAGE_SIZE, align 4
  %481 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %482 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %481, i32 0, i32 11
  %483 = load i64, i64* %482, align 8
  %484 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %485 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %484, i32 0, i32 10
  %486 = load i32, i32* %485, align 8
  %487 = call i32 @dma_free_coherent(%struct.TYPE_10__* %479, i32 %480, i64 %483, i32 %486)
  br label %488

488:                                              ; preds = %477, %472
  %489 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %490 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %489, i32 0, i32 9
  %491 = load i32*, i32** %490, align 8
  %492 = icmp ne i32* %491, null
  br i1 %492, label %493, label %498

493:                                              ; preds = %488
  %494 = load %struct.pxamci_host*, %struct.pxamci_host** %5, align 8
  %495 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %494, i32 0, i32 9
  %496 = load i32*, i32** %495, align 8
  %497 = call i32 @clk_put(i32* %496)
  br label %498

498:                                              ; preds = %493, %488
  br label %499

499:                                              ; preds = %498, %449
  %500 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %501 = icmp ne %struct.mmc_host* %500, null
  br i1 %501, label %502, label %506

502:                                              ; preds = %499
  %503 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %504 = bitcast %struct.mmc_host* %503 to %struct.pxamci_host*
  %505 = call i32 @mmc_free_host(%struct.pxamci_host* %504)
  br label %506

506:                                              ; preds = %502, %499
  %507 = load %struct.resource*, %struct.resource** %6, align 8
  %508 = call i32 @release_resource(%struct.resource* %507)
  %509 = load i32, i32* %9, align 4
  store i32 %509, i32* %2, align 4
  br label %510

510:                                              ; preds = %506, %436, %36, %24
  %511 = load i32, i32* %2, align 4
  ret i32 %511
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i8*) #1

declare dso_local %struct.pxamci_host* @mmc_alloc_host(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @cpu_is_pxa25x(...) #1

declare dso_local %struct.pxamci_host* @mmc_priv(%struct.pxamci_host*) #1

declare dso_local i32* @clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i64 @cpu_is_pxa300(...) #1

declare dso_local i64 @cpu_is_pxa310(...) #1

declare dso_local i32 @pxamci_init_ocr(%struct.pxamci_host*) #1

declare dso_local i64 @dma_alloc_coherent(%struct.TYPE_10__*, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @pxamci_stop_clock(%struct.pxamci_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pxa_request_dma(i8*, i32, i32, %struct.pxamci_host*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pxamci_host*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxamci_host*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mmc_add_host(%struct.pxamci_host*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @pxa_free_dma(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_10__*, i32, i64, i32) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @mmc_free_host(%struct.pxamci_host*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
