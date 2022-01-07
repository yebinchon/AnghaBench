; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_pxa3xx_nand.c_pxa3xx_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.pxa3xx_nand_platform_data* }
%struct.pxa3xx_nand_platform_data = type { i32, i32 }
%struct.pxa3xx_nand_info = type { i32, i32*, %struct.mtd_info*, i32, i32, i32, i32, i32, %struct.nand_chip, %struct.platform_device* }
%struct.mtd_info = type { i32, %struct.pxa3xx_nand_info* }
%struct.nand_chip = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get nand clock\0A\00", align 1
@IORESOURCE_DMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"no resource defined for data DMA\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"no resource defined for command DMA\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"no IRQ resource defined\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"no IO memory resource defined\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"failed to request memory resource\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"ioremap() failed\0A\00", align 1
@IRQ_NAND = common dso_local global i32 0, align 4
@pxa3xx_nand_irq = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"failed to detect flash\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"failed to scan nand\0A\00", align 1
@use_dma = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa3xx_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.pxa3xx_nand_platform_data*, align 8
  %5 = alloca %struct.pxa3xx_nand_info*, align 8
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %13, align 8
  store %struct.pxa3xx_nand_platform_data* %14, %struct.pxa3xx_nand_platform_data** %4, align 8
  %15 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %4, align 8
  %16 = icmp ne %struct.pxa3xx_nand_platform_data* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @dev_err(%struct.TYPE_4__* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %278

23:                                               ; preds = %1
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mtd_info* @kzalloc(i32 72, i32 %24)
  store %struct.mtd_info* %25, %struct.mtd_info** %7, align 8
  %26 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %27 = icmp ne %struct.mtd_info* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_4__* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %278

34:                                               ; preds = %23
  %35 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i64 1
  %37 = bitcast %struct.mtd_info* %36 to %struct.pxa3xx_nand_info*
  store %struct.pxa3xx_nand_info* %37, %struct.pxa3xx_nand_info** %5, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %40 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %39, i32 0, i32 9
  store %struct.platform_device* %38, %struct.platform_device** %40, align 8
  %41 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %42 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %41, i32 0, i32 8
  store %struct.nand_chip* %42, %struct.nand_chip** %6, align 8
  %43 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %44 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 1
  store %struct.pxa3xx_nand_info* %43, %struct.pxa3xx_nand_info** %45, align 8
  %46 = load i32, i32* @THIS_MODULE, align 4
  %47 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @clk_get(%struct.TYPE_4__* %50, i32* null)
  %52 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %53 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %55 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %34
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_err(%struct.TYPE_4__* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %64 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @PTR_ERR(i32 %65)
  store i32 %66, i32* %9, align 4
  br label %274

67:                                               ; preds = %34
  %68 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %69 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @clk_enable(i32 %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_DMA, align 4
  %74 = call %struct.resource* @platform_get_resource(%struct.platform_device* %72, i32 %73, i32 0)
  store %struct.resource* %74, %struct.resource** %8, align 8
  %75 = load %struct.resource*, %struct.resource** %8, align 8
  %76 = icmp eq %struct.resource* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %67
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i32 @dev_err(%struct.TYPE_4__* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @ENXIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  br label %265

83:                                               ; preds = %67
  %84 = load %struct.resource*, %struct.resource** %8, align 8
  %85 = getelementptr inbounds %struct.resource, %struct.resource* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %88 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load i32, i32* @IORESOURCE_DMA, align 4
  %91 = call %struct.resource* @platform_get_resource(%struct.platform_device* %89, i32 %90, i32 1)
  store %struct.resource* %91, %struct.resource** %8, align 8
  %92 = load %struct.resource*, %struct.resource** %8, align 8
  %93 = icmp eq %struct.resource* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_4__* %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %265

100:                                              ; preds = %83
  %101 = load %struct.resource*, %struct.resource** %8, align 8
  %102 = getelementptr inbounds %struct.resource, %struct.resource* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %105 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %104, i32 0, i32 6
  store i32 %103, i32* %105, align 4
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = call i32 @platform_get_irq(%struct.platform_device* %106, i32 0)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call i32 @dev_err(%struct.TYPE_4__* %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %265

116:                                              ; preds = %100
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = load i32, i32* @IORESOURCE_MEM, align 4
  %119 = call %struct.resource* @platform_get_resource(%struct.platform_device* %117, i32 %118, i32 0)
  store %struct.resource* %119, %struct.resource** %8, align 8
  %120 = load %struct.resource*, %struct.resource** %8, align 8
  %121 = icmp eq %struct.resource* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(%struct.TYPE_4__* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %9, align 4
  br label %265

128:                                              ; preds = %116
  %129 = load %struct.resource*, %struct.resource** %8, align 8
  %130 = getelementptr inbounds %struct.resource, %struct.resource* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.resource*, %struct.resource** %8, align 8
  %133 = call i32 @resource_size(%struct.resource* %132)
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.resource* @request_mem_region(i32 %131, i32 %133, i32 %136)
  store %struct.resource* %137, %struct.resource** %8, align 8
  %138 = load %struct.resource*, %struct.resource** %8, align 8
  %139 = icmp eq %struct.resource* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %128
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = call i32 @dev_err(%struct.TYPE_4__* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* @EBUSY, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %9, align 4
  br label %265

146:                                              ; preds = %128
  %147 = load %struct.resource*, %struct.resource** %8, align 8
  %148 = getelementptr inbounds %struct.resource, %struct.resource* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.resource*, %struct.resource** %8, align 8
  %151 = call i32 @resource_size(%struct.resource* %150)
  %152 = call i32* @ioremap(i32 %149, i32 %151)
  %153 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %154 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %153, i32 0, i32 1
  store i32* %152, i32** %154, align 8
  %155 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %156 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %146
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 @dev_err(%struct.TYPE_4__* %161, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32, i32* @ENODEV, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %9, align 4
  br label %258

165:                                              ; preds = %146
  %166 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %167 = call i32 @pxa3xx_nand_init_buff(%struct.pxa3xx_nand_info* %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %253

171:                                              ; preds = %165
  %172 = load i32, i32* @IRQ_NAND, align 4
  %173 = load i32, i32* @pxa3xx_nand_irq, align 4
  %174 = load i32, i32* @IRQF_DISABLED, align 4
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %179 = call i32 @request_irq(i32 %172, i32 %173, i32 %174, i32 %177, %struct.pxa3xx_nand_info* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %171
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @dev_err(%struct.TYPE_4__* %184, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %227

186:                                              ; preds = %171
  %187 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %188 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %4, align 8
  %189 = call i32 @pxa3xx_nand_detect_flash(%struct.pxa3xx_nand_info* %187, %struct.pxa3xx_nand_platform_data* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %193, i32 0, i32 0
  %195 = call i32 @dev_err(%struct.TYPE_4__* %194, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %9, align 4
  br label %223

198:                                              ; preds = %186
  %199 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %200 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %201 = call i32 @pxa3xx_nand_init_mtd(%struct.mtd_info* %199, %struct.pxa3xx_nand_info* %200)
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.mtd_info* %203)
  %205 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %206 = call i64 @nand_scan(%struct.mtd_info* %205, i32 1)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %198
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = call i32 @dev_err(%struct.TYPE_4__* %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %212 = load i32, i32* @ENXIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %9, align 4
  br label %223

214:                                              ; preds = %198
  %215 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %216 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %4, align 8
  %217 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.pxa3xx_nand_platform_data*, %struct.pxa3xx_nand_platform_data** %4, align 8
  %220 = getelementptr inbounds %struct.pxa3xx_nand_platform_data, %struct.pxa3xx_nand_platform_data* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @add_mtd_partitions(%struct.mtd_info* %215, i32 %218, i32 %221)
  store i32 %222, i32* %2, align 4
  br label %278

223:                                              ; preds = %208, %192
  %224 = load i32, i32* @IRQ_NAND, align 4
  %225 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %226 = call i32 @free_irq(i32 %224, %struct.pxa3xx_nand_info* %225)
  br label %227

227:                                              ; preds = %223, %182
  %228 = load i64, i64* @use_dma, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %227
  %231 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %232 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @pxa_free_dma(i32 %233)
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %238 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %241 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %240, i32 0, i32 2
  %242 = load %struct.mtd_info*, %struct.mtd_info** %241, align 8
  %243 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %244 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @dma_free_coherent(%struct.TYPE_4__* %236, i32 %239, %struct.mtd_info* %242, i32 %245)
  br label %252

247:                                              ; preds = %227
  %248 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %249 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %248, i32 0, i32 2
  %250 = load %struct.mtd_info*, %struct.mtd_info** %249, align 8
  %251 = call i32 @kfree(%struct.mtd_info* %250)
  br label %252

252:                                              ; preds = %247, %230
  br label %253

253:                                              ; preds = %252, %170
  %254 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %255 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = call i32 @iounmap(i32* %256)
  br label %258

258:                                              ; preds = %253, %159
  %259 = load %struct.resource*, %struct.resource** %8, align 8
  %260 = getelementptr inbounds %struct.resource, %struct.resource* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.resource*, %struct.resource** %8, align 8
  %263 = call i32 @resource_size(%struct.resource* %262)
  %264 = call i32 @release_mem_region(i32 %261, i32 %263)
  br label %265

265:                                              ; preds = %258, %140, %122, %110, %94, %77
  %266 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %267 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @clk_disable(i32 %268)
  %270 = load %struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_info** %5, align 8
  %271 = getelementptr inbounds %struct.pxa3xx_nand_info, %struct.pxa3xx_nand_info* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @clk_put(i32 %272)
  br label %274

274:                                              ; preds = %265, %59
  %275 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %276 = call i32 @kfree(%struct.mtd_info* %275)
  %277 = load i32, i32* %9, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %274, %214, %28, %17
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.mtd_info* @kzalloc(i32, i32) #1

declare dso_local i32 @clk_get(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @pxa3xx_nand_init_buff(%struct.pxa3xx_nand_info*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.pxa3xx_nand_info*) #1

declare dso_local i32 @pxa3xx_nand_detect_flash(%struct.pxa3xx_nand_info*, %struct.pxa3xx_nand_platform_data*) #1

declare dso_local i32 @pxa3xx_nand_init_mtd(%struct.mtd_info*, %struct.pxa3xx_nand_info*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mtd_info*) #1

declare dso_local i64 @nand_scan(%struct.mtd_info*, i32) #1

declare dso_local i32 @add_mtd_partitions(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.pxa3xx_nand_info*) #1

declare dso_local i32 @pxa_free_dma(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.TYPE_4__*, i32, %struct.mtd_info*, i32) #1

declare dso_local i32 @kfree(%struct.mtd_info*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
