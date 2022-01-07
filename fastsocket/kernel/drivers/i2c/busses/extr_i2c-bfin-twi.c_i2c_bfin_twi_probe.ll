; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_i2c_bfin_twi_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-bfin-twi.c_i2c_bfin_twi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i64, i32, i32 }
%struct.bfin_twi_iface = type { i64, i32*, %struct.i2c_adapter, %struct.TYPE_4__, i32 }
%struct.i2c_adapter = type { i64, i32, %struct.TYPE_3__, %struct.bfin_twi_iface*, i32*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Cannot allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot get IORESOURCE_MEM\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Cannot map IO\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"No IRQ specified\0A\00", align 1
@bfin_twi_timeout = common dso_local global i32 0, align 4
@bfin_twi_algorithm = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_CLASS_SPD = common dso_local global i32 0, align 4
@pin_req = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"i2c-bfin-twi\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Can't setup pin mux!\0A\00", align 1
@bfin_twi_interrupt_entry = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Can't get IRQ %d !\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ = common dso_local global i32 0, align 4
@TWI_ENA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Can't add i2c adapter!\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Blackfin BF5xx on-chip I2C TWI Contoller, regs_base@%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @i2c_bfin_twi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_bfin_twi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bfin_twi_iface*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.bfin_twi_iface* @kzalloc(i32 88, i32 %9)
  store %struct.bfin_twi_iface* %10, %struct.bfin_twi_iface** %4, align 8
  %11 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %12 = icmp ne %struct.bfin_twi_iface* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = call i32 (i32*, i8*, ...) @dev_err(i32* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %211

19:                                               ; preds = %1
  %20 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %21 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %20, i32 0, i32 4
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource(%struct.platform_device* %23, i32 %24, i32 0)
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = icmp eq %struct.resource* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 1
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %208

34:                                               ; preds = %19
  %35 = load %struct.resource*, %struct.resource** %6, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = call i32 @resource_size(%struct.resource* %38)
  %40 = call i32* @ioremap(i32 %37, i32 %39)
  %41 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %42 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %44 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 1
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %207

53:                                               ; preds = %34
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i64 @platform_get_irq(%struct.platform_device* %54, i32 0)
  %56 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %57 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %59 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 1
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %194

68:                                               ; preds = %53
  %69 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %70 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %69, i32 0, i32 3
  %71 = call i32 @init_timer(%struct.TYPE_4__* %70)
  %72 = load i32, i32* @bfin_twi_timeout, align 4
  %73 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %74 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %77 = ptrtoint %struct.bfin_twi_iface* %76 to i64
  %78 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %79 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %82 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %81, i32 0, i32 2
  store %struct.i2c_adapter* %82, %struct.i2c_adapter** %5, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %87 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @strlcpy(i32 %90, i32 %93, i32 4)
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %95, i32 0, i32 4
  store i32* @bfin_twi_algorithm, i32** %96, align 8
  %97 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %98 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %99 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %98, i32 0, i32 3
  store %struct.bfin_twi_iface* %97, %struct.bfin_twi_iface** %99, align 8
  %100 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %101 = load i32, i32* @I2C_CLASS_SPD, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %104 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 1
  %107 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32* %106, i32** %109, align 8
  %110 = load i32*, i32** @pin_req, align 8
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @peripheral_request_list(i32 %115, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %68
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 1
  %122 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %202

123:                                              ; preds = %68
  %124 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %125 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @bfin_twi_interrupt_entry, align 4
  %128 = load i32, i32* @IRQF_DISABLED, align 4
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %133 = call i32 @request_irq(i64 %126, i32 %127, i32 %128, i32 %131, %struct.bfin_twi_iface* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %123
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 1
  %139 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %140 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %141)
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %7, align 4
  br label %193

145:                                              ; preds = %123
  %146 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %147 = call i32 (...) @get_sclk()
  %148 = sdiv i32 %147, 1024
  %149 = sdiv i32 %148, 1024
  %150 = add nsw i32 %149, 5
  %151 = sdiv i32 %150, 10
  %152 = and i32 %151, 127
  %153 = call i32 @write_CONTROL(%struct.bfin_twi_iface* %146, i32 %152)
  %154 = load i32, i32* @CONFIG_I2C_BLACKFIN_TWI_CLK_KHZ, align 4
  %155 = sdiv i32 5120, %154
  store i32 %155, i32* %8, align 4
  %156 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %157 = load i32, i32* %8, align 4
  %158 = shl i32 %157, 8
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @write_CLKDIV(%struct.bfin_twi_iface* %156, i32 %160)
  %162 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %163 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %164 = call i32 @read_CONTROL(%struct.bfin_twi_iface* %163)
  %165 = load i32, i32* @TWI_ENA, align 4
  %166 = or i32 %164, %165
  %167 = call i32 @write_CONTROL(%struct.bfin_twi_iface* %162, i32 %166)
  %168 = call i32 (...) @SSYNC()
  %169 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %170 = call i32 @i2c_add_numbered_adapter(%struct.i2c_adapter* %169)
  store i32 %170, i32* %7, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %145
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 1
  %176 = call i32 (i32*, i8*, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %187

177:                                              ; preds = %145
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %180 = call i32 @platform_set_drvdata(%struct.platform_device* %178, %struct.bfin_twi_iface* %179)
  %181 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 1
  %183 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %184 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @dev_info(i32* %182, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32* %185)
  store i32 0, i32* %2, align 4
  br label %213

187:                                              ; preds = %173
  %188 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %189 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %192 = call i32 @free_irq(i64 %190, %struct.bfin_twi_iface* %191)
  br label %193

193:                                              ; preds = %187, %136
  br label %194

194:                                              ; preds = %193, %62
  %195 = load i32*, i32** @pin_req, align 8
  %196 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %197 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @peripheral_free_list(i32 %200)
  br label %202

202:                                              ; preds = %194, %119
  %203 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %204 = getelementptr inbounds %struct.bfin_twi_iface, %struct.bfin_twi_iface* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @iounmap(i32* %205)
  br label %207

207:                                              ; preds = %202, %47
  br label %208

208:                                              ; preds = %207, %28
  %209 = load %struct.bfin_twi_iface*, %struct.bfin_twi_iface** %4, align 8
  %210 = call i32 @kfree(%struct.bfin_twi_iface* %209)
  br label %211

211:                                              ; preds = %208, %13
  %212 = load i32, i32* %7, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %211, %177
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.bfin_twi_iface* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @peripheral_request_list(i32, i8*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.bfin_twi_iface*) #1

declare dso_local i32 @write_CONTROL(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @get_sclk(...) #1

declare dso_local i32 @write_CLKDIV(%struct.bfin_twi_iface*, i32) #1

declare dso_local i32 @read_CONTROL(%struct.bfin_twi_iface*) #1

declare dso_local i32 @SSYNC(...) #1

declare dso_local i32 @i2c_add_numbered_adapter(%struct.i2c_adapter*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bfin_twi_iface*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32*) #1

declare dso_local i32 @free_irq(i64, %struct.bfin_twi_iface*) #1

declare dso_local i32 @peripheral_free_list(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.bfin_twi_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
