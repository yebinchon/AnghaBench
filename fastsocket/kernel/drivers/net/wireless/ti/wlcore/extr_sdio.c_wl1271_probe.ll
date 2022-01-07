; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_sdio.c_wl1271_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_sdio.c_wl1271_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.sdio_device_id = type { i32 }
%struct.wlcore_platdev_data = type { %struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.wl12xx_sdio_glue = type { %struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32* }
%struct.resource = type { i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sdio_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"can't allocate glue\0A\00", align 1
@MMC_QUIRK_LENIENT_FN0 = common dso_local global i32 0, align 4
@MMC_QUIRK_BLKSZ_FOR_BYTE_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"missing wlan platform data: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"sdio PM caps = 0x%x\0A\00", align 1
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@SDIO_SDIO_REV_3_00 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"wl18xx\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"wl12xx\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"can't allocate platform_device\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"can't add resources\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"can't add platform data\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"can't add platform device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @wl1271_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca %struct.wlcore_platdev_data*, align 8
  %7 = alloca %struct.wl12xx_sdio_glue*, align 8
  %8 = alloca [1 x %struct.resource], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %204

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.wlcore_platdev_data* @kzalloc(i32 32, i32 %22)
  store %struct.wlcore_platdev_data* %23, %struct.wlcore_platdev_data** %6, align 8
  %24 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %25 = icmp ne %struct.wlcore_platdev_data* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %202

27:                                               ; preds = %21
  %28 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %29 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %28, i32 0, i32 3
  store i32* @sdio_ops, i32** %29, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.wlcore_platdev_data* @kzalloc(i32 32, i32 %30)
  %32 = bitcast %struct.wlcore_platdev_data* %31 to %struct.wl12xx_sdio_glue*
  store %struct.wl12xx_sdio_glue* %32, %struct.wl12xx_sdio_glue** %7, align 8
  %33 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %34 = icmp ne %struct.wl12xx_sdio_glue* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %27
  %36 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %37 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %36, i32 0, i32 1
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %199

39:                                               ; preds = %27
  %40 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %41 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %40, i32 0, i32 1
  %42 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %43 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* @MMC_QUIRK_LENIENT_FN0, align 4
  %45 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %46 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @MMC_QUIRK_BLKSZ_FOR_BYTE_MODE, align 4
  %52 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %53 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %52, i32 0, i32 2
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %51
  store i32 %57, i32* %55, align 8
  %58 = call %struct.TYPE_15__* (...) @wl12xx_get_platform_data()
  %59 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %60 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %59, i32 0, i32 2
  store %struct.TYPE_15__* %58, %struct.TYPE_15__** %60, align 8
  %61 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %62 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %61, i32 0, i32 2
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  %64 = call i64 @IS_ERR(%struct.TYPE_15__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %39
  %67 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %68 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = call i32 @PTR_ERR(%struct.TYPE_15__* %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %72 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %195

76:                                               ; preds = %39
  %77 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %78 = call i32 @sdio_get_host_pm_caps(%struct.sdio_func* %77)
  store i32 %78, i32* %9, align 4
  %79 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %80 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @dev_dbg(i32* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %90 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %89, i32 0, i32 2
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %76
  %94 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %95 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %96 = bitcast %struct.wl12xx_sdio_glue* %95 to %struct.wlcore_platdev_data*
  %97 = call i32 @sdio_set_drvdata(%struct.sdio_func* %94, %struct.wlcore_platdev_data* %96)
  %98 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %99 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %98, i32 0, i32 1
  %100 = call i32 @pm_runtime_put_noidle(i32* %99)
  %101 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %102 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %101, i32 0, i32 2
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SDIO_SDIO_REV_3_00, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %93
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %111

110:                                              ; preds = %93
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %111

111:                                              ; preds = %110, %109
  %112 = load i8*, i8** %11, align 8
  %113 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %114 = call %struct.TYPE_16__* @platform_device_alloc(i8* %112, i32 %113)
  %115 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %116 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %115, i32 0, i32 0
  store %struct.TYPE_16__* %114, %struct.TYPE_16__** %116, align 8
  %117 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %118 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = icmp ne %struct.TYPE_16__* %119, null
  br i1 %120, label %128, label %121

121:                                              ; preds = %111
  %122 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %123 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %10, align 4
  br label %195

128:                                              ; preds = %111
  %129 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %130 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %129, i32 0, i32 1
  %131 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %132 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %131, i32 0, i32 0
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  store i32* %130, i32** %135, align 8
  %136 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %8, i64 0, i64 0
  %137 = call i32 @memset(%struct.resource* %136, i32 0, i32 16)
  %138 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %139 = getelementptr inbounds %struct.wlcore_platdev_data, %struct.wlcore_platdev_data* %138, i32 0, i32 2
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %8, i64 0, i64 0
  %144 = getelementptr inbounds %struct.resource, %struct.resource* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* @IORESOURCE_IRQ, align 4
  %146 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %8, i64 0, i64 0
  %147 = getelementptr inbounds %struct.resource, %struct.resource* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 8
  %148 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %8, i64 0, i64 0
  %149 = getelementptr inbounds %struct.resource, %struct.resource* %148, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %149, align 16
  %150 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %151 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %8, i64 0, i64 0
  %154 = getelementptr inbounds [1 x %struct.resource], [1 x %struct.resource]* %8, i64 0, i64 0
  %155 = call i32 @ARRAY_SIZE(%struct.resource* %154)
  %156 = call i32 @platform_device_add_resources(%struct.TYPE_16__* %152, %struct.resource* %153, i32 %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %128
  %160 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %161 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 (i32*, i8*, ...) @dev_err(i32* %162, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %190

164:                                              ; preds = %128
  %165 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %166 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %165, i32 0, i32 0
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %169 = call i32 @platform_device_add_data(%struct.TYPE_16__* %167, %struct.wlcore_platdev_data* %168, i32 32)
  store i32 %169, i32* %10, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %174 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = call i32 (i32*, i8*, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %190

177:                                              ; preds = %164
  %178 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %179 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %178, i32 0, i32 0
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = call i32 @platform_device_add(%struct.TYPE_16__* %180)
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %177
  %185 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %186 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 (i32*, i8*, ...) @dev_err(i32* %187, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %190

189:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %204

190:                                              ; preds = %184, %172, %159
  %191 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %192 = getelementptr inbounds %struct.wl12xx_sdio_glue, %struct.wl12xx_sdio_glue* %191, i32 0, i32 0
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = call i32 @platform_device_put(%struct.TYPE_16__* %193)
  br label %195

195:                                              ; preds = %190, %121, %66
  %196 = load %struct.wl12xx_sdio_glue*, %struct.wl12xx_sdio_glue** %7, align 8
  %197 = bitcast %struct.wl12xx_sdio_glue* %196 to %struct.wlcore_platdev_data*
  %198 = call i32 @kfree(%struct.wlcore_platdev_data* %197)
  br label %199

199:                                              ; preds = %195, %35
  %200 = load %struct.wlcore_platdev_data*, %struct.wlcore_platdev_data** %6, align 8
  %201 = call i32 @kfree(%struct.wlcore_platdev_data* %200)
  br label %202

202:                                              ; preds = %199, %26
  %203 = load i32, i32* %10, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %189, %18
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.wlcore_platdev_data* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_15__* @wl12xx_get_platform_data(...) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_15__*) #1

declare dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.wlcore_platdev_data*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local %struct.TYPE_16__* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.TYPE_16__*, %struct.resource*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local i32 @platform_device_add_data(%struct.TYPE_16__*, %struct.wlcore_platdev_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.TYPE_16__*) #1

declare dso_local i32 @platform_device_put(%struct.TYPE_16__*) #1

declare dso_local i32 @kfree(%struct.wlcore_platdev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
