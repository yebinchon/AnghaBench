; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ismt.c_ismt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pci_dev = type { i32, i32* }
%struct.pci_device_id = type { i32 }
%struct.ismt_priv = type { %struct.TYPE_7__, i32, %struct.pci_dev* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_5__, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@smbus_algorithm = common dso_local global i32 0, align 4
@ISMT_MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to enable SMBus PCI device (%d)\0A\00", align 1
@SMBBAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"SMBus base address uninitialized, upgrade BIOS\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"SMBus iSMT adapter at %lx\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" start=0x%lX\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" len=0x%lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"ACPI resource conflict!\0A\00", align 1
@ismt_driver = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to request SMBus region 0x%lx-0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unable to ioremap SMBus BAR\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"pci_set_dma_mask fail %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to add SMBus iSMT adapter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @ismt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ismt_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ismt_priv* @devm_kzalloc(i32* %11, i32 48, i32 %12)
  store %struct.ismt_priv* %13, %struct.ismt_priv** %7, align 8
  %14 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %15 = icmp ne %struct.ismt_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %204

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %22 = call i32 @pci_set_drvdata(%struct.pci_dev* %20, %struct.ismt_priv* %21)
  %23 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %24 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %23, i32 0, i32 0
  %25 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %26 = call i32 @i2c_set_adapdata(%struct.TYPE_7__* %24, %struct.ismt_priv* %25)
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %29 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %32 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %33 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 8
  %35 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %36 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  store i32* @smbus_algorithm, i32** %37, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %41 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32* %39, i32** %43, align 8
  %44 = load i32, i32* @ISMT_MAX_RETRIES, align 4
  %45 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %46 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %50 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %49, i32 0, i32 2
  store %struct.pci_dev* %48, %struct.pci_dev** %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i32 @pcim_enable_device(%struct.pci_dev* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %19
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %204

61:                                               ; preds = %19
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = call i32 @pci_set_master(%struct.pci_dev* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i64, i64* @SMBBAR, align 8
  %66 = call i64 @pci_resource_start(%struct.pci_dev* %64, i64 %65)
  store i64 %66, i64* %8, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load i64, i64* @SMBBAR, align 8
  %69 = call i64 @pci_resource_len(%struct.pci_dev* %67, i64 %68)
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72, %61
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_err(i32* %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %204

81:                                               ; preds = %72
  %82 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %83 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @snprintf(i32 %85, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %86)
  %88 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %89 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %88, i32 0, i32 2
  %90 = load %struct.pci_dev*, %struct.pci_dev** %89, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @dev_dbg(i32* %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %92)
  %94 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %95 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %94, i32 0, i32 2
  %96 = load %struct.pci_dev*, %struct.pci_dev** %95, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @dev_dbg(i32* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @SMBBAR, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = call i32 @acpi_check_resource_conflict(i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %81
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %204

113:                                              ; preds = %81
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = load i64, i64* @SMBBAR, align 8
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ismt_driver, i32 0, i32 0), align 4
  %117 = call i32 @pci_request_region(%struct.pci_dev* %114, i64 %115, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %121, i32 0, i32 0
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %124, %125
  %127 = call i32 (i32*, i8*, ...) @dev_err(i32* %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %123, i64 %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %204

129:                                              ; preds = %113
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = load i64, i64* @SMBBAR, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @pcim_iomap(%struct.pci_dev* %130, i64 %131, i64 %132)
  %134 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %135 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %137 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %129
  %141 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = call i32 (i32*, i8*, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* @ENODEV, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %6, align 4
  br label %199

146:                                              ; preds = %129
  %147 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %148 = call i32 @DMA_BIT_MASK(i32 64)
  %149 = call i64 @pci_set_dma_mask(%struct.pci_dev* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = call i32 @DMA_BIT_MASK(i32 64)
  %154 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %151, %146
  %157 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %158 = call i32 @DMA_BIT_MASK(i32 32)
  %159 = call i64 @pci_set_dma_mask(%struct.pci_dev* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %163 = call i32 @DMA_BIT_MASK(i32 32)
  %164 = call i64 @pci_set_consistent_dma_mask(%struct.pci_dev* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161, %156
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 0
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = call i32 (i32*, i8*, ...) @dev_err(i32* %168, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), %struct.pci_dev* %169)
  br label %199

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %151
  %173 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %174 = call i32 @ismt_dev_init(%struct.ismt_priv* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %199

178:                                              ; preds = %172
  %179 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %180 = call i32 @ismt_hw_init(%struct.ismt_priv* %179)
  %181 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %182 = call i32 @ismt_int_init(%struct.ismt_priv* %181)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %199

186:                                              ; preds = %178
  %187 = load %struct.ismt_priv*, %struct.ismt_priv** %7, align 8
  %188 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %187, i32 0, i32 0
  %189 = call i32 @i2c_add_adapter(%struct.TYPE_7__* %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %194 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %193, i32 0, i32 0
  %195 = call i32 (i32*, i8*, ...) @dev_err(i32* %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %196 = load i32, i32* @ENODEV, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %6, align 4
  br label %199

198:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %204

199:                                              ; preds = %192, %185, %177, %166, %140
  %200 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %201 = load i64, i64* @SMBBAR, align 8
  %202 = call i32 @pci_release_region(%struct.pci_dev* %200, i64 %201)
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %199, %198, %120, %108, %75, %55, %16
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.ismt_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ismt_priv*) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_7__*, %struct.ismt_priv*) #1

declare dso_local i32 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i64) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i64) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @acpi_check_resource_conflict(i32*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i64, i64) #1

declare dso_local i64 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @ismt_dev_init(%struct.ismt_priv*) #1

declare dso_local i32 @ismt_hw_init(%struct.ismt_priv*) #1

declare dso_local i32 @ismt_int_init(%struct.ismt_priv*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_7__*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
